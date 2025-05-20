
package Paws::DataZone::GetSubscriptionTarget;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSubscriptionTarget');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetSubscriptionTargetOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetSubscriptionTarget - Arguments for method GetSubscriptionTarget on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSubscriptionTarget on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetSubscriptionTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSubscriptionTarget.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetSubscriptionTargetOutput = $datazone->GetSubscriptionTarget(
      DomainIdentifier      => 'MyDomainId',
      EnvironmentIdentifier => 'MyEnvironmentId',
      Identifier            => 'MySubscriptionTargetId',

    );

    # Results:
    my $ApplicableAssetTypes =
      $GetSubscriptionTargetOutput->ApplicableAssetTypes;
    my $AuthorizedPrincipals =
      $GetSubscriptionTargetOutput->AuthorizedPrincipals;
    my $CreatedAt        = $GetSubscriptionTargetOutput->CreatedAt;
    my $CreatedBy        = $GetSubscriptionTargetOutput->CreatedBy;
    my $DomainId         = $GetSubscriptionTargetOutput->DomainId;
    my $EnvironmentId    = $GetSubscriptionTargetOutput->EnvironmentId;
    my $Id               = $GetSubscriptionTargetOutput->Id;
    my $ManageAccessRole = $GetSubscriptionTargetOutput->ManageAccessRole;
    my $Name             = $GetSubscriptionTargetOutput->Name;
    my $ProjectId        = $GetSubscriptionTargetOutput->ProjectId;
    my $Provider         = $GetSubscriptionTargetOutput->Provider;
    my $SubscriptionTargetConfig =
      $GetSubscriptionTargetOutput->SubscriptionTargetConfig;
    my $Type      = $GetSubscriptionTargetOutput->Type;
    my $UpdatedAt = $GetSubscriptionTargetOutput->UpdatedAt;
    my $UpdatedBy = $GetSubscriptionTargetOutput->UpdatedBy;

    # Returns a L<Paws::DataZone::GetSubscriptionTargetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetSubscriptionTarget>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which the subscription target
exists.



=head2 B<REQUIRED> EnvironmentIdentifier => Str

The ID of the environment associated with the subscription target.



=head2 B<REQUIRED> Identifier => Str

The ID of the subscription target.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSubscriptionTarget in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

