
package Paws::DataZone::UpdateSubscriptionTarget;
  use Moose;
  has ApplicableAssetTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'applicableAssetTypes');
  has AuthorizedPrincipals => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'authorizedPrincipals');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has ManageAccessRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'manageAccessRole');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Provider => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'provider');
  has SubscriptionTargetConfig => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::SubscriptionTargetForm]', traits => ['NameInRequest'], request_name => 'subscriptionTargetConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSubscriptionTarget');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::UpdateSubscriptionTargetOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateSubscriptionTarget - Arguments for method UpdateSubscriptionTarget on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSubscriptionTarget on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method UpdateSubscriptionTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSubscriptionTarget.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $UpdateSubscriptionTargetOutput = $datazone->UpdateSubscriptionTarget(
      DomainIdentifier      => 'MyDomainId',
      EnvironmentIdentifier => 'MyEnvironmentId',
      Identifier            => 'MySubscriptionTargetId',
      ApplicableAssetTypes  => [
        'MyTypeName', ...    # min: 1, max: 256
      ],    # OPTIONAL
      AuthorizedPrincipals => [ 'MyAuthorizedPrincipalIdentifier', ... ]
      ,                                                          # OPTIONAL
      ManageAccessRole         => 'MyIamRoleArn',                # OPTIONAL
      Name                     => 'MySubscriptionTargetName',    # OPTIONAL
      Provider                 => 'MyString',                    # OPTIONAL
      SubscriptionTargetConfig => [
        {
          Content  => 'MyString',
          FormName => 'MyFormName',    # min: 1, max: 128

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ApplicableAssetTypes =
      $UpdateSubscriptionTargetOutput->ApplicableAssetTypes;
    my $AuthorizedPrincipals =
      $UpdateSubscriptionTargetOutput->AuthorizedPrincipals;
    my $CreatedAt        = $UpdateSubscriptionTargetOutput->CreatedAt;
    my $CreatedBy        = $UpdateSubscriptionTargetOutput->CreatedBy;
    my $DomainId         = $UpdateSubscriptionTargetOutput->DomainId;
    my $EnvironmentId    = $UpdateSubscriptionTargetOutput->EnvironmentId;
    my $Id               = $UpdateSubscriptionTargetOutput->Id;
    my $ManageAccessRole = $UpdateSubscriptionTargetOutput->ManageAccessRole;
    my $Name             = $UpdateSubscriptionTargetOutput->Name;
    my $ProjectId        = $UpdateSubscriptionTargetOutput->ProjectId;
    my $Provider         = $UpdateSubscriptionTargetOutput->Provider;
    my $SubscriptionTargetConfig =
      $UpdateSubscriptionTargetOutput->SubscriptionTargetConfig;
    my $Type      = $UpdateSubscriptionTargetOutput->Type;
    my $UpdatedAt = $UpdateSubscriptionTargetOutput->UpdatedAt;
    my $UpdatedBy = $UpdateSubscriptionTargetOutput->UpdatedBy;

    # Returns a L<Paws::DataZone::UpdateSubscriptionTargetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/UpdateSubscriptionTarget>

=head1 ATTRIBUTES


=head2 ApplicableAssetTypes => ArrayRef[Str|Undef]

The applicable asset types to be updated as part of the
C<UpdateSubscriptionTarget> action.



=head2 AuthorizedPrincipals => ArrayRef[Str|Undef]

The authorized principals to be updated as part of the
C<UpdateSubscriptionTarget> action.



=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain in which a subscription
target is to be updated.



=head2 B<REQUIRED> EnvironmentIdentifier => Str

The identifier of the environment in which a subscription target is to
be updated.



=head2 B<REQUIRED> Identifier => Str

Identifier of the subscription target that is to be updated.



=head2 ManageAccessRole => Str

The manage access role to be updated as part of the
C<UpdateSubscriptionTarget> action.



=head2 Name => Str

The name to be updated as part of the C<UpdateSubscriptionTarget>
action.



=head2 Provider => Str

The provider to be updated as part of the C<UpdateSubscriptionTarget>
action.



=head2 SubscriptionTargetConfig => ArrayRef[L<Paws::DataZone::SubscriptionTargetForm>]

The configuration to be updated as part of the
C<UpdateSubscriptionTarget> action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSubscriptionTarget in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

