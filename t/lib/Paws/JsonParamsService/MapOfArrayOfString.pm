package Paws::JsonParamsService::MapOfArrayOfString;
  use Moo;
  use Types::Standard qw(HashRef ArrayRef Str Maybe);
  with 'Paws::API::StrToNativeMapParser';

  has Map => (is => 'ro', isa => HashRef[ArrayRef[Maybe[Str]]]);
1;
