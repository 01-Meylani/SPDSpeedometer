<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SosialMediaResource\Pages;
use App\Filament\Resources\SosialMediaResource\RelationManagers;
use App\Models\SosialMedia;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Facades\Filament;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class SosialMediaResource extends Resource
{
    protected static ?string $model = SosialMedia::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\FileUpload::make('logo')->label('Logo')->image()->required(),
                Forms\Components\TextInput::make('nama_sosmed')->label('Nama Sosmed')->required(),
                Forms\Components\TextInput::make('link_sosmed')->label('Link Sosmed')->required()->url(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('logo')->label('Logo')->searchable(),
                Tables\Columns\TextColumn::make('nama_sosmed')->label('Nama Sosmed')->searchable()->searchable(),
                Tables\Columns\TextColumn::make('link_sosmed')->label('Link Sosmed')->searchable(),
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
            'index' => Pages\ListSosialMedia::route('/'),
            'create' => Pages\CreateSosialMedia::route('/create'),
            'edit' => Pages\EditSosialMedia::route('/{record}/edit'),
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
