use Paws::JsonParamsService::Object;

package Paws::JsonParamsService::MapOfArrayOfObject;
  use Moo;
  use Types::Standard qw(HashRef ArrayRef InstanceOf);
  with 'Paws::API::StrToObjMapParser';

  has Map => (is => 'ro', isa => HashRef[ArrayRef[InstanceOf['Paws::JsonParamsService::Object']]]);
1;
