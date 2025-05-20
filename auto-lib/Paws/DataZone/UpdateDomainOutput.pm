
package Paws::DataZone::UpdateDomainOutput;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainExecutionRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainExecutionRole');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has RootDomainUnitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'rootDomainUnitId');
  has ServiceRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRole');
  has SingleSignOn => (is => 'ro', isa => 'Paws::DataZone::SingleSignOn', traits => ['NameInRequest'], request_name => 'singleSignOn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateDomainOutput

=head1 ATTRIBUTES


=head2 Description => Str

The description to be updated as part of the C<UpdateDomain> action.


=head2 DomainExecutionRole => Str

The domain execution role to be updated as part of the C<UpdateDomain>
action.


=head2 B<REQUIRED> Id => Str

The identifier of the Amazon DataZone domain.


=head2 LastUpdatedAt => Str

Specifies the timestamp of when the domain was last updated.


=head2 Name => Str

The name to be updated as part of the C<UpdateDomain> action.


=head2 RootDomainUnitId => Str

The ID of the root domain unit.


=head2 ServiceRole => Str

The service role of the domain.


=head2 SingleSignOn => L<Paws::DataZone::SingleSignOn>

The single sign-on option of the Amazon DataZone domain.


=head2 _request_id => Str


=cut

