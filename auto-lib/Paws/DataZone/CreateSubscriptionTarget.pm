
package Paws::DataZone::CreateSubscriptionTarget;
  use Moose;
  has ApplicableAssetTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'applicableAssetTypes', required => 1);
  has AuthorizedPrincipals => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'authorizedPrincipals', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentIdentifier', required => 1);
  has ManageAccessRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'manageAccessRole', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Provider => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'provider');
  has SubscriptionTargetConfig => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::SubscriptionTargetForm]', traits => ['NameInRequest'], request_name => 'subscriptionTargetConfig', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSubscriptionTarget');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateSubscriptionTargetOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateSubscriptionTarget - Arguments for method CreateSubscriptionTarget on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSubscriptionTarget on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateSubscriptionTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSubscriptionTarget.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateSubscriptionTargetOutput = $datazone->CreateSubscriptionTarget(
      ApplicableAssetTypes => [
        'MyTypeName', ...    # min: 1, max: 256
      ],
      AuthorizedPrincipals     => [ 'MyAuthorizedPrincipalIdentifier', ... ],
      DomainIdentifier         => 'MyDomainId',
      EnvironmentIdentifier    => 'MyEnvironmentId',
      ManageAccessRole         => 'MyIamRoleArn',
      Name                     => 'MySubscriptionTargetName',
      SubscriptionTargetConfig => [
        {
          Content  => 'MyString',
          FormName => 'MyFormName',    # min: 1, max: 128

        },
        ...
      ],
      Type        => 'MyString',
      ClientToken => 'MyString',    # OPTIONAL
      Provider    => 'MyString',    # OPTIONAL
    );

    # Results:
    my $ApplicableAssetTypes =
      $CreateSubscriptionTargetOutput->ApplicableAssetTypes;
    my $AuthorizedPrincipals =
      $CreateSubscriptionTargetOutput->AuthorizedPrincipals;
    my $CreatedAt        = $CreateSubscriptionTargetOutput->CreatedAt;
    my $CreatedBy        = $CreateSubscriptionTargetOutput->CreatedBy;
    my $DomainId         = $CreateSubscriptionTargetOutput->DomainId;
    my $EnvironmentId    = $CreateSubscriptionTargetOutput->EnvironmentId;
    my $Id               = $CreateSubscriptionTargetOutput->Id;
    my $ManageAccessRole = $CreateSubscriptionTargetOutput->ManageAccessRole;
    my $Name             = $CreateSubscriptionTargetOutput->Name;
    my $ProjectId        = $CreateSubscriptionTargetOutput->ProjectId;
    my $Provider         = $CreateSubscriptionTargetOutput->Provider;
    my $SubscriptionTargetConfig =
      $CreateSubscriptionTargetOutput->SubscriptionTargetConfig;
    my $Type      = $CreateSubscriptionTargetOutput->Type;
    my $UpdatedAt = $CreateSubscriptionTargetOutput->UpdatedAt;
    my $UpdatedBy = $CreateSubscriptionTargetOutput->UpdatedBy;

    # Returns a L<Paws::DataZone::CreateSubscriptionTargetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateSubscriptionTarget>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicableAssetTypes => ArrayRef[Str|Undef]

The asset types that can be included in the subscription target.



=head2 B<REQUIRED> AuthorizedPrincipals => ArrayRef[Str|Undef]

The authorized principals of the subscription target.



=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which subscription target is
created.



=head2 B<REQUIRED> EnvironmentIdentifier => Str

The ID of the environment in which subscription target is created.



=head2 B<REQUIRED> ManageAccessRole => Str

The manage access role that is used to create the subscription target.



=head2 B<REQUIRED> Name => Str

The name of the subscription target.



=head2 Provider => Str

The provider of the subscription target.



=head2 B<REQUIRED> SubscriptionTargetConfig => ArrayRef[L<Paws::DataZone::SubscriptionTargetForm>]

The configuration of the subscription target.



=head2 B<REQUIRED> Type => Str

The type of the subscription target.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSubscriptionTarget in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

