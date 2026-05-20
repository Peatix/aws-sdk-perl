use Paws::JsonParamsService::Object;
use Paws::JsonParamsService::MapOfArrayOfString;
use Paws::JsonParamsService::MapOfArrayOfObject;

package Paws::JsonParamsService::Method1Return;
  use Moo;
  use Types::Standard qw(Str Int Bool ArrayRef HashRef Maybe InstanceOf);
  has StringAttribute => (is => 'ro', isa => Str);
  has IntegerAttribute => (is => 'ro', isa => Int);
  has BooleanAttribute => (is => 'ro', isa => Bool);

  has ObjectAttribute => (is => 'ro', isa => InstanceOf['Paws::JsonParamsService::Object']);

  has ArrayOfString => (is => 'ro', isa => ArrayRef[Maybe[Str]]);
  has ArrayOfObject => (is => 'ro', isa => ArrayRef[InstanceOf['Paws::JsonParamsService::Object']]);

  has MapOfString => (is => 'ro', isa => HashRef[Str]);
  has MapOfObject => (is => 'ro', isa => HashRef[InstanceOf['Paws::JsonParamsService::Object']]);

  has MapOfArrayOfString => (is => 'ro', isa => InstanceOf['Paws::JsonParamsService::MapOfArrayOfString']);
  has MapOfArrayOfObject => (is => 'ro', isa => InstanceOf['Paws::JsonParamsService::MapOfArrayOfObject']);

  has _request_id => (is => 'ro', isa => Str);
1;
