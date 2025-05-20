
package Paws::DataZone::GetEnvironmentProfile;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEnvironmentProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environment-profiles/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetEnvironmentProfileOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetEnvironmentProfile - Arguments for method GetEnvironmentProfile on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEnvironmentProfile on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetEnvironmentProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEnvironmentProfile.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetEnvironmentProfileOutput = $datazone->GetEnvironmentProfile(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyEnvironmentProfileId',

    );

    # Results:
    my $AwsAccountId     = $GetEnvironmentProfileOutput->AwsAccountId;
    my $AwsAccountRegion = $GetEnvironmentProfileOutput->AwsAccountRegion;
    my $CreatedAt        = $GetEnvironmentProfileOutput->CreatedAt;
    my $CreatedBy        = $GetEnvironmentProfileOutput->CreatedBy;
    my $Description      = $GetEnvironmentProfileOutput->Description;
    my $DomainId         = $GetEnvironmentProfileOutput->DomainId;
    my $EnvironmentBlueprintId =
      $GetEnvironmentProfileOutput->EnvironmentBlueprintId;
    my $Id             = $GetEnvironmentProfileOutput->Id;
    my $Name           = $GetEnvironmentProfileOutput->Name;
    my $ProjectId      = $GetEnvironmentProfileOutput->ProjectId;
    my $UpdatedAt      = $GetEnvironmentProfileOutput->UpdatedAt;
    my $UserParameters = $GetEnvironmentProfileOutput->UserParameters;

    # Returns a L<Paws::DataZone::GetEnvironmentProfileOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetEnvironmentProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which this environment profile
exists.



=head2 B<REQUIRED> Identifier => Str

The ID of the environment profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEnvironmentProfile in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

