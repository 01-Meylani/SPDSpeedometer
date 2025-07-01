<?php

namespace App\Listeners;

use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Http\UploadedFile;
use Illuminate\Queue\InteractsWithQueue;

class CopyUploadedFiles
{
    /**
     * Create the event listener.
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     */
    public function handle($event): void
    {
        if ($event instanceof UploadedFile) {
            $filePath = $event->getPathname();
            $fileName = $event->getClientOriginalName();
            $destination = public_path('storage/' . $fileName);

            // Pastikan folder tujuan ada
            if (!file_exists(public_path('storage'))) {
                mkdir(public_path('storage'), 0777, true);
            }

            // Copy file ke public_html/storage/
            if (file_exists($filePath)) {
                copy($filePath, $destination);
            }
        }
    }
}
