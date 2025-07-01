<?php

namespace App\Filament\Resources;

use App\Filament\Resources\CabangResource\Pages;
use App\Filament\Resources\CabangResource\RelationManagers;
use App\Models\Cabang;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Facades\Filament;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class CabangResource extends Resource
{
    protected static ?string $model = Cabang::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\FileUpload::make('logo')
                    ->label('Logo')
                    ->image()
                    ->required(),
                Forms\Components\TextInput::make('nama_cabang')->label('Nama Cabang')->required(),
                Forms\Components\TextInput::make('no_whatsapp')->label('No Whatsapp')->required(),
                Forms\Components\TextInput::make('maps_link')->label('Maps')->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('logo')->label('Logo'),
                Tables\Columns\TextColumn::make('nama_cabang')->label('Nama Cabang')->searchable(),
                Tables\Columns\TextColumn::make('no_whatsapp')->label('No Whatsapp')->searchable(),
                Tables\Columns\TextColumn::make('maps_link')->label('Maps')->searchable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
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
            'index' => Pages\ListCabangs::route('/'),
            'create' => Pages\CreateCabang::route('/create'),
            'edit' => Pages\EditCabang::route('/{record}/edit'),
        ];
    }

    public static function canViewAny(): bool
    {
        // $user = Filament::auth()->user();

        // // Debugging: Pastikan isAdmin() ada
        // dd(method_exists($user, 'isAdmin'), get_class($user));

        return Filament::auth()->user()->isAdmin();
    }

}
