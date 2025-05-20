
package Paws::CleanRoomsML::GetMLConfigurationResponse;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createTime', required => 1);
  has DefaultOutputLocation => (is => 'ro', isa => 'Paws::CleanRoomsML::MLOutputConfiguration', traits => ['NameInRequest'], request_name => 'defaultOutputLocation', required => 1);
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'membershipIdentifier', required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetMLConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreateTime => Str

The time at which the ML configuration was created.


=head2 B<REQUIRED> DefaultOutputLocation => L<Paws::CleanRoomsML::MLOutputConfiguration>

The Amazon S3 location where ML model output is stored.


=head2 B<REQUIRED> MembershipIdentifier => Str

The membership ID of the member that owns the ML configuration you
requested.


=head2 B<REQUIRED> UpdateTime => Str

The most recent time at which the ML configuration was updated.


=head2 _request_id => Str


=cut

