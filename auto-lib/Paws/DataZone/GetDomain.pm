
package Paws::DataZone::GetDomain;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDomain');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetDomainOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetDomain - Arguments for method GetDomain on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDomain on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDomain.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetDomainOutput = $datazone->GetDomain(
      Identifier => 'MyDomainId',

    );

    # Results:
    my $Arn                 = $GetDomainOutput->Arn;
    my $CreatedAt           = $GetDomainOutput->CreatedAt;
    my $Description         = $GetDomainOutput->Description;
    my $DomainExecutionRole = $GetDomainOutput->DomainExecutionRole;
    my $DomainVersion       = $GetDomainOutput->DomainVersion;
    my $Id                  = $GetDomainOutput->Id;
    my $KmsKeyIdentifier    = $GetDomainOutput->KmsKeyIdentifier;
    my $LastUpdatedAt       = $GetDomainOutput->LastUpdatedAt;
    my $Name                = $GetDomainOutput->Name;
    my $PortalUrl           = $GetDomainOutput->PortalUrl;
    my $RootDomainUnitId    = $GetDomainOutput->RootDomainUnitId;
    my $ServiceRole         = $GetDomainOutput->ServiceRole;
    my $SingleSignOn        = $GetDomainOutput->SingleSignOn;
    my $Status              = $GetDomainOutput->Status;
    my $Tags                = $GetDomainOutput->Tags;

    # Returns a L<Paws::DataZone::GetDomainOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The identifier of the specified Amazon DataZone domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDomain in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

