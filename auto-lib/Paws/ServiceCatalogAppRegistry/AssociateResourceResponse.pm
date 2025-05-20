
package Paws::ServiceCatalogAppRegistry::AssociateResourceResponse;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationArn');
  has Options => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'options');
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::AssociateResourceResponse

=head1 ATTRIBUTES


=head2 ApplicationArn => Str

The Amazon resource name (ARN) of the application that was augmented
with attributes.


=head2 Options => ArrayRef[Str|Undef]

Determines whether an application tag is applied or skipped.


=head2 ResourceArn => Str

The Amazon resource name (ARN) that specifies the resource.


=head2 _request_id => Str


=cut

