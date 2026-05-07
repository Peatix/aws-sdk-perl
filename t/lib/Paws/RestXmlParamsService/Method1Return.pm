use Paws::RestXmlParamsService::Object;

package Paws::RestXmlParamsService::Method1Return;
  use Moose;

  # Top-level scalar attributes.
  has StringAttribute  => (is => 'ro', isa => 'Str');
  has IntegerAttribute => (is => 'ro', isa => 'Int');
  has BooleanAttribute => (is => 'ro', isa => 'Bool');

  # Nested object.
  has ObjectAttribute => (is => 'ro', isa => 'Paws::RestXmlParamsService::Object');

  # Lists. RestXML `flattened_arrays` controls whether <Item> repeats
  # at the parent or wrapped in a list element.
  has ArrayOfString => (is => 'ro', isa => 'ArrayRef[Str]');
  has ArrayOfObject => (is => 'ro', isa => 'ArrayRef[Paws::RestXmlParamsService::Object]');

  has _request_id => (is => 'ro', isa => 'Str');
1;
