<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PesanResource\Pages;
use App\Filament\Resources\PesanResource\RelationManagers;
use App\Models\Pesan;
use Carbon\Carbon;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Filters\Filter;
use Filament\Forms\Components\DatePicker;
use Filament\Tables\Table;
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;
use Illuminate\Database\Eloquent\Builder;

class PesanResource extends Resource
{
    protected static ?string $model = Pesan::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('nama')
                    ->label('Nama')
                    ->name('nama')
                    ->placeholder('Masukkan nama Anda')
                    ->required(),
                Forms\Components\TextInput::make('no_whatsapp')
                    ->label('No WhatsApp')
                    ->name('no_whatsapp')
                    ->required(),
                Forms\Components\TextInput::make('merk_mobil')
                    ->label('Merk Mobil')
                    ->name('merk_mobil')
                    ->required(),
                Forms\Components\TextInput::make('kota')
                    ->label('Kota')
                    ->name('kota')
                    ->required(),
                Forms\Components\Textarea::make('pesan')
                    ->label('Pesan')
                    ->name('pesan')
                    ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Tanggal')
                    ->date('j F Y') // Format tanggal: 13 September 2025
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('nama')
                    ->label('Nama')
                    ->name('nama')
                    ->searchable(),
                Tables\Columns\TextColumn::make('no_whatsapp')
                    ->label('No WhatsApp')
                    ->searchable()
                    ->url(fn($record) => 'https://wa.me/' . preg_replace('/^08/', '628', preg_replace('/[^0-9]/', '', $record->no_whatsapp)), true)
                    ->openUrlInNewTab() // Buka di tab baru
                    ->icon('heroicon-o-chat-bubble-oval-left-ellipsis') // Tambahkan ikon chat
                    ->color('success'),
                Tables\Columns\TextColumn::make('merk_mobil')
                    ->label('Merk Mobil')
                    ->name('merk_mobil')
                    ->searchable(),
                Tables\Columns\TextColumn::make('kota')
                    ->label('Kota')
                    ->name('kota')
                    ->searchable(),
                Tables\Columns\TextColumn::make('pesan')
                    ->label('Pesan')
                    ->name('pesan')
                    ->searchable(),
            ])
               
            ->filters([
                Filter::make('tanggal')
                    ->form([
                        DatePicker::make('from')->label('Dari Tanggal'),
                        DatePicker::make('until')->label('Sampai Tanggal'),
                    ])
                    ->query(function (Builder $query, array $data) {
                        if (!empty($data['from'])) {
                            $query->whereDate('created_at', '>=', $data['from']);
                        }
                        if (!empty($data['until'])) {
                            $query->whereDate('created_at', '<=', $data['until']);
                        }
                        return $query;
                    }),
            ])
     
            ->defaultSort('created_at', 'desc')
            ->actions([
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                ExportBulkAction::make(),
                Tables\Actions\DeleteBulkAction::make(),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPesans::route('/'),
            'create' => Pages\CreatePesan::route('/create'),
      
        ];
    }
}
