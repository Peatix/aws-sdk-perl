
package Paws::CleanRoomsML::GetConfiguredModelAlgorithmAssociation;
  use Moose;
  has ConfiguredModelAlgorithmAssociationArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configuredModelAlgorithmAssociationArn', required => 1);
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConfiguredModelAlgorithmAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/configured-model-algorithm-associations/{configuredModelAlgorithmAssociationArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::GetConfiguredModelAlgorithmAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetConfiguredModelAlgorithmAssociation - Arguments for method GetConfiguredModelAlgorithmAssociation on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConfiguredModelAlgorithmAssociation on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method GetConfiguredModelAlgorithmAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConfiguredModelAlgorithmAssociation.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $GetConfiguredModelAlgorithmAssociationResponse =
      $cleanrooms -ml->GetConfiguredModelAlgorithmAssociation(
      ConfiguredModelAlgorithmAssociationArn =>
        'MyConfiguredModelAlgorithmAssociationArn',
      MembershipIdentifier => 'MyUUID',

      );

    # Results:
    my $CollaborationIdentifier =
      $GetConfiguredModelAlgorithmAssociationResponse->CollaborationIdentifier;
    my $ConfiguredModelAlgorithmArn =
      $GetConfiguredModelAlgorithmAssociationResponse
      ->ConfiguredModelAlgorithmArn;
    my $ConfiguredModelAlgorithmAssociationArn =
      $GetConfiguredModelAlgorithmAssociationResponse
      ->ConfiguredModelAlgorithmAssociationArn;
    my $CreateTime =
      $GetConfiguredModelAlgorithmAssociationResponse->CreateTime;
    my $Description =
      $GetConfiguredModelAlgorithmAssociationResponse->Description;
    my $MembershipIdentifier =
      $GetConfiguredModelAlgorithmAssociationResponse->MembershipIdentifier;
    my $Name = $GetConfiguredModelAlgorithmAssociationResponse->Name;
    my $PrivacyConfiguration =
      $GetConfiguredModelAlgorithmAssociationResponse->PrivacyConfiguration;
    my $Tags = $GetConfiguredModelAlgorithmAssociationResponse->Tags;
    my $UpdateTime =
      $GetConfiguredModelAlgorithmAssociationResponse->UpdateTime;

# Returns a L<Paws::CleanRoomsML::GetConfiguredModelAlgorithmAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/GetConfiguredModelAlgorithmAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredModelAlgorithmAssociationArn => Str

The Amazon Resource Name (ARN) of the configured model algorithm
association that you want to return information about.



=head2 B<REQUIRED> MembershipIdentifier => Str

The membership ID of the member that created the configured model
algorithm association.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConfiguredModelAlgorithmAssociation in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

