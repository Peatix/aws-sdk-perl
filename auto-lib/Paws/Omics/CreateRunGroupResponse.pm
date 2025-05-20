
package Paws::Omics::CreateRunGroupResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::CreateRunGroupResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The group's ARN.


=head2 Id => Str

The group's ID.


=head2 Tags => L<Paws::Omics::TagMap>

Tags for the run group.


=head2 _request_id => Str


=cut

