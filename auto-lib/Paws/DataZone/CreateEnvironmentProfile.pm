
package Paws::DataZone::CreateEnvironmentProfile;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsAccountId');
  has AwsAccountRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsAccountRegion');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnvironmentBlueprintIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentBlueprintIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ProjectIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectIdentifier', required => 1);
  has UserParameters => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::EnvironmentParameter]', traits => ['NameInRequest'], request_name => 'userParameters');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEnvironmentProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environment-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateEnvironmentProfileOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateEnvironmentProfile - Arguments for method CreateEnvironmentProfile on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEnvironmentProfile on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateEnvironmentProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEnvironmentProfile.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateEnvironmentProfileOutput = $datazone->CreateEnvironmentProfile(
      DomainIdentifier               => 'MyDomainId',
      EnvironmentBlueprintIdentifier => 'MyEnvironmentBlueprintId',
      Name                           => 'MyEnvironmentProfileName',
      ProjectIdentifier              => 'MyProjectId',
      AwsAccountId                   => 'MyAwsAccountId',             # OPTIONAL
      AwsAccountRegion               => 'MyAwsRegion',                # OPTIONAL
      Description                    => 'MyDescription',              # OPTIONAL
      UserParameters                 => [
        {
          Name  => 'MyString',    # OPTIONAL
          Value => 'MyString',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AwsAccountId     = $CreateEnvironmentProfileOutput->AwsAccountId;
    my $AwsAccountRegion = $CreateEnvironmentProfileOutput->AwsAccountRegion;
    my $CreatedAt        = $CreateEnvironmentProfileOutput->CreatedAt;
    my $CreatedBy        = $CreateEnvironmentProfileOutput->CreatedBy;
    my $Description      = $CreateEnvironmentProfileOutput->Description;
    my $DomainId         = $CreateEnvironmentProfileOutput->DomainId;
    my $EnvironmentBlueprintId =
      $CreateEnvironmentProfileOutput->EnvironmentBlueprintId;
    my $Id             = $CreateEnvironmentProfileOutput->Id;
    my $Name           = $CreateEnvironmentProfileOutput->Name;
    my $ProjectId      = $CreateEnvironmentProfileOutput->ProjectId;
    my $UpdatedAt      = $CreateEnvironmentProfileOutput->UpdatedAt;
    my $UserParameters = $CreateEnvironmentProfileOutput->UserParameters;

    # Returns a L<Paws::DataZone::CreateEnvironmentProfileOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateEnvironmentProfile>

=head1 ATTRIBUTES


=head2 AwsAccountId => Str

The Amazon Web Services account in which the Amazon DataZone
environment is created.



=head2 AwsAccountRegion => Str

The Amazon Web Services region in which this environment profile is
created.



=head2 Description => Str

The description of this Amazon DataZone environment profile.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which this environment profile
is created.



=head2 B<REQUIRED> EnvironmentBlueprintIdentifier => Str

The ID of the blueprint with which this environment profile is created.



=head2 B<REQUIRED> Name => Str

The name of this Amazon DataZone environment profile.



=head2 B<REQUIRED> ProjectIdentifier => Str

The identifier of the project in which to create the environment
profile.



=head2 UserParameters => ArrayRef[L<Paws::DataZone::EnvironmentParameter>]

The user parameters of this Amazon DataZone environment profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEnvironmentProfile in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

