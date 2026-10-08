import { ChangeEvent, useRef } from "react";
import { Image, Upload, X } from "lucide-react";

interface ImageUploadFieldProps {
  label: string;
  value: string;
  onChange: (value: string) => void;
  className?: string;
}

export function ImageUploadField({ label, value, onChange, className = "" }: ImageUploadFieldProps) {
  const fileInputRef = useRef<HTMLInputElement>(null);

  const handleFileChange = (e: ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (!file) return;

    if (!file.type.startsWith("image/")) {
      alert("Please upload a valid image file (PNG, JPG, WebP).");
      return;
    }

    const reader = new FileReader();
    reader.onload = (event) => {
      const img = new window.Image();
      img.onload = () => {
        const canvas = document.createElement("canvas");
        const MAX_WIDTH = 1200;
        const MAX_HEIGHT = 1200;
        let width = img.width;
        let height = img.height;

        if (width > height) {
          if (width > MAX_WIDTH) {
            height = Math.round((height * MAX_WIDTH) / width);
            width = MAX_WIDTH;
          }
        } else {
          if (height > MAX_HEIGHT) {
            width = Math.round((width * MAX_HEIGHT) / height);
            height = MAX_HEIGHT;
          }
        }

        canvas.width = width;
        canvas.height = height;
        const ctx = canvas.getContext("2d");
        if (ctx) {
          ctx.drawImage(img, 0, 0, width, height);
          const compressedDataUrl = canvas.toDataURL("image/jpeg", 0.82);
          onChange(compressedDataUrl);
        }
      };
      if (typeof event.target?.result === "string") {
        img.src = event.target.result;
      }
    };
    reader.readAsDataURL(file);
    if (fileInputRef.current) fileInputRef.current.value = "";
  };

  return (
    <div className={`block ${className}`}>
      <span className="atlas-label text-muted-foreground">{label}</span>
      <div className="mt-2 flex flex-col gap-3 sm:flex-row sm:items-center">
        {value ? (
          <div className="relative h-24 w-36 shrink-0 overflow-hidden border border-border bg-card">
            <img src={value} alt="Preview" className="h-full w-full object-cover" />
            <button
              type="button"
              onClick={() => onChange("")}
              className="absolute right-1 top-1 grid h-6 w-6 place-items-center bg-black/70 text-white hover:bg-destructive"
              title="Remove image"
            >
              <X className="h-3.5 w-3.5" />
            </button>
          </div>
        ) : (
          <div className="grid h-24 w-36 shrink-0 place-items-center border border-dashed border-border bg-card text-muted-foreground">
            <div className="flex flex-col items-center gap-1 text-[11px]">
              <Image className="h-5 w-5 text-primary" />
              <span>No image</span>
            </div>
          </div>
        )}

        <div className="flex flex-1 flex-col gap-2">
          <input
            ref={fileInputRef}
            type="file"
            accept="image/*"
            onChange={handleFileChange}
            className="hidden"
            id={`file-upload-${label.replace(/\s+/g, "-").toLowerCase()}`}
          />
          <label
            htmlFor={`file-upload-${label.replace(/\s+/g, "-").toLowerCase()}`}
            className="inline-flex cursor-pointer items-center justify-center gap-2 border border-border bg-background px-4 py-2.5 text-xs font-extrabold text-foreground transition hover:border-primary hover:text-primary"
          >
            <Upload className="h-4 w-4 text-primary" />
            {value ? "Change image file" : "Upload image file"}
          </label>
          <span className="text-[11px] text-muted-foreground">
            JPG, PNG, WebP up to 5MB. Compressed automatically.
          </span>
        </div>
      </div>
    </div>
  );
}
