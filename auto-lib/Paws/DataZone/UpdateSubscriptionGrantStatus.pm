
package Paws::DataZone::UpdateSubscriptionGrantStatus;
  use Moose;
  has AssetIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetIdentifier', required => 1);
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has FailureCause => (is => 'ro', isa => 'Paws::DataZone::FailureCause', traits => ['NameInRequest'], request_name => 'failureCause');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has TargetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSubscriptionGrantStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/subscription-grants/{identifier}/status/{assetIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::UpdateSubscriptionGrantStatusOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateSubscriptionGrantStatus - Arguments for method UpdateSubscriptionGrantStatus on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSubscriptionGrantStatus on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method UpdateSubscriptionGrantStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSubscriptionGrantStatus.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $UpdateSubscriptionGrantStatusOutput =
      $datazone->UpdateSubscriptionGrantStatus(
      AssetIdentifier  => 'MyAssetId',
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MySubscriptionGrantId',
      Status           => 'GRANT_PENDING',
      FailureCause     => {
        Message => 'MyString',    # OPTIONAL
      },    # OPTIONAL
      TargetName => 'MyString',    # OPTIONAL
      );

    # Results:
    my $Assets         = $UpdateSubscriptionGrantStatusOutput->Assets;
    my $CreatedAt      = $UpdateSubscriptionGrantStatusOutput->CreatedAt;
    my $CreatedBy      = $UpdateSubscriptionGrantStatusOutput->CreatedBy;
    my $DomainId       = $UpdateSubscriptionGrantStatusOutput->DomainId;
    my $GrantedEntity  = $UpdateSubscriptionGrantStatusOutput->GrantedEntity;
    my $Id             = $UpdateSubscriptionGrantStatusOutput->Id;
    my $Status         = $UpdateSubscriptionGrantStatusOutput->Status;
    my $SubscriptionId = $UpdateSubscriptionGrantStatusOutput->SubscriptionId;
    my $SubscriptionTargetId =
      $UpdateSubscriptionGrantStatusOutput->SubscriptionTargetId;
    my $UpdatedAt = $UpdateSubscriptionGrantStatusOutput->UpdatedAt;
    my $UpdatedBy = $UpdateSubscriptionGrantStatusOutput->UpdatedBy;

    # Returns a L<Paws::DataZone::UpdateSubscriptionGrantStatusOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/UpdateSubscriptionGrantStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetIdentifier => Str

The identifier of the asset the subscription grant status of which is
to be updated.



=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain in which a subscription
grant status is to be updated.



=head2 FailureCause => L<Paws::DataZone::FailureCause>

Specifies the error message that is returned if the operation cannot be
successfully completed.



=head2 B<REQUIRED> Identifier => Str

The identifier of the subscription grant the status of which is to be
updated.



=head2 B<REQUIRED> Status => Str

The status to be updated as part of the
C<UpdateSubscriptionGrantStatus> action.

Valid values are: C<"GRANT_PENDING">, C<"REVOKE_PENDING">, C<"GRANT_IN_PROGRESS">, C<"REVOKE_IN_PROGRESS">, C<"GRANTED">, C<"REVOKED">, C<"GRANT_FAILED">, C<"REVOKE_FAILED">

=head2 TargetName => Str

The target name to be updated as part of the
C<UpdateSubscriptionGrantStatus> action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSubscriptionGrantStatus in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

