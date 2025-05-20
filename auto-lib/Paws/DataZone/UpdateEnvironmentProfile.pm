
package Paws::DataZone::UpdateEnvironmentProfile;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsAccountId');
  has AwsAccountRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsAccountRegion');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has UserParameters => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::EnvironmentParameter]', traits => ['NameInRequest'], request_name => 'userParameters');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnvironmentProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environment-profiles/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::UpdateEnvironmentProfileOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateEnvironmentProfile - Arguments for method UpdateEnvironmentProfile on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEnvironmentProfile on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method UpdateEnvironmentProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEnvironmentProfile.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $UpdateEnvironmentProfileOutput = $datazone->UpdateEnvironmentProfile(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyEnvironmentProfileId',
      AwsAccountId     => 'MyAwsAccountId',              # OPTIONAL
      AwsAccountRegion => 'MyAwsRegion',                 # OPTIONAL
      Description      => 'MyString',                    # OPTIONAL
      Name             => 'MyEnvironmentProfileName',    # OPTIONAL
      UserParameters   => [
        {
          Name  => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                 # OPTIONAL
    );

    # Results:
    my $AwsAccountId     = $UpdateEnvironmentProfileOutput->AwsAccountId;
    my $AwsAccountRegion = $UpdateEnvironmentProfileOutput->AwsAccountRegion;
    my $CreatedAt        = $UpdateEnvironmentProfileOutput->CreatedAt;
    my $CreatedBy        = $UpdateEnvironmentProfileOutput->CreatedBy;
    my $Description      = $UpdateEnvironmentProfileOutput->Description;
    my $DomainId         = $UpdateEnvironmentProfileOutput->DomainId;
    my $EnvironmentBlueprintId =
      $UpdateEnvironmentProfileOutput->EnvironmentBlueprintId;
    my $Id             = $UpdateEnvironmentProfileOutput->Id;
    my $Name           = $UpdateEnvironmentProfileOutput->Name;
    my $ProjectId      = $UpdateEnvironmentProfileOutput->ProjectId;
    my $UpdatedAt      = $UpdateEnvironmentProfileOutput->UpdatedAt;
    my $UserParameters = $UpdateEnvironmentProfileOutput->UserParameters;

    # Returns a L<Paws::DataZone::UpdateEnvironmentProfileOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/UpdateEnvironmentProfile>

=head1 ATTRIBUTES


=head2 AwsAccountId => Str

The Amazon Web Services account in which a specified environment
profile is to be udpated.



=head2 AwsAccountRegion => Str

The Amazon Web Services Region in which a specified environment profile
is to be updated.



=head2 Description => Str

The description to be updated as part of the
C<UpdateEnvironmentProfile> action.



=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain in which an environment
profile is to be updated.



=head2 B<REQUIRED> Identifier => Str

The identifier of the environment profile that is to be updated.



=head2 Name => Str

The name to be updated as part of the C<UpdateEnvironmentProfile>
action.



=head2 UserParameters => ArrayRef[L<Paws::DataZone::EnvironmentParameter>]

The user parameters to be updated as part of the
C<UpdateEnvironmentProfile> action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEnvironmentProfile in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

