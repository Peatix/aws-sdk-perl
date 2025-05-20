
package Paws::DataZone::UpdateDomain;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainExecutionRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainExecutionRole');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ServiceRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRole');
  has SingleSignOn => (is => 'ro', isa => 'Paws::DataZone::SingleSignOn', traits => ['NameInRequest'], request_name => 'singleSignOn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDomain');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::UpdateDomainOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateDomain - Arguments for method UpdateDomain on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDomain on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method UpdateDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDomain.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $UpdateDomainOutput = $datazone->UpdateDomain(
      Identifier          => 'MyDomainId',
      ClientToken         => 'MyString',     # OPTIONAL
      Description         => 'MyString',     # OPTIONAL
      DomainExecutionRole => 'MyRoleArn',    # OPTIONAL
      Name                => 'MyString',     # OPTIONAL
      ServiceRole         => 'MyRoleArn',    # OPTIONAL
      SingleSignOn        => {
        IdcInstanceArn => 'MySingleSignOnIdcInstanceArnString',    # OPTIONAL
        Type           => 'IAM_IDC',      # values: IAM_IDC, DISABLED; OPTIONAL
        UserAssignment => 'AUTOMATIC',    # values: AUTOMATIC, MANUAL; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Description         = $UpdateDomainOutput->Description;
    my $DomainExecutionRole = $UpdateDomainOutput->DomainExecutionRole;
    my $Id                  = $UpdateDomainOutput->Id;
    my $LastUpdatedAt       = $UpdateDomainOutput->LastUpdatedAt;
    my $Name                = $UpdateDomainOutput->Name;
    my $RootDomainUnitId    = $UpdateDomainOutput->RootDomainUnitId;
    my $ServiceRole         = $UpdateDomainOutput->ServiceRole;
    my $SingleSignOn        = $UpdateDomainOutput->SingleSignOn;

    # Returns a L<Paws::DataZone::UpdateDomainOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/UpdateDomain>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 Description => Str

The description to be updated as part of the C<UpdateDomain> action.



=head2 DomainExecutionRole => Str

The domain execution role to be updated as part of the C<UpdateDomain>
action.



=head2 B<REQUIRED> Identifier => Str

The ID of the Amazon Web Services domain that is to be updated.



=head2 Name => Str

The name to be updated as part of the C<UpdateDomain> action.



=head2 ServiceRole => Str

The service role of the domain.



=head2 SingleSignOn => L<Paws::DataZone::SingleSignOn>

The single sign-on option to be updated as part of the C<UpdateDomain>
action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDomain in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

