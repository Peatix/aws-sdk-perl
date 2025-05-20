
package Paws::CleanRoomsML::GetCollaborationConfiguredModelAlgorithmAssociation;
  use Moose;
  has CollaborationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'collaborationIdentifier', required => 1);
  has ConfiguredModelAlgorithmAssociationArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configuredModelAlgorithmAssociationArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCollaborationConfiguredModelAlgorithmAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/collaborations/{collaborationIdentifier}/configured-model-algorithm-associations/{configuredModelAlgorithmAssociationArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::GetCollaborationConfiguredModelAlgorithmAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetCollaborationConfiguredModelAlgorithmAssociation - Arguments for method GetCollaborationConfiguredModelAlgorithmAssociation on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCollaborationConfiguredModelAlgorithmAssociation on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method GetCollaborationConfiguredModelAlgorithmAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCollaborationConfiguredModelAlgorithmAssociation.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $GetCollaborationConfiguredModelAlgorithmAssociationResponse =
      $cleanrooms -ml->GetCollaborationConfiguredModelAlgorithmAssociation(
      CollaborationIdentifier                => 'MyUUID',
      ConfiguredModelAlgorithmAssociationArn =>
        'MyConfiguredModelAlgorithmAssociationArn',

      );

    # Results:
    my $CollaborationIdentifier =
      $GetCollaborationConfiguredModelAlgorithmAssociationResponse
      ->CollaborationIdentifier;
    my $ConfiguredModelAlgorithmArn =
      $GetCollaborationConfiguredModelAlgorithmAssociationResponse
      ->ConfiguredModelAlgorithmArn;
    my $ConfiguredModelAlgorithmAssociationArn =
      $GetCollaborationConfiguredModelAlgorithmAssociationResponse
      ->ConfiguredModelAlgorithmAssociationArn;
    my $CreateTime =
      $GetCollaborationConfiguredModelAlgorithmAssociationResponse->CreateTime;
    my $CreatorAccountId =
      $GetCollaborationConfiguredModelAlgorithmAssociationResponse
      ->CreatorAccountId;
    my $Description =
      $GetCollaborationConfiguredModelAlgorithmAssociationResponse->Description;
    my $MembershipIdentifier =
      $GetCollaborationConfiguredModelAlgorithmAssociationResponse
      ->MembershipIdentifier;
    my $Name =
      $GetCollaborationConfiguredModelAlgorithmAssociationResponse->Name;
    my $PrivacyConfiguration =
      $GetCollaborationConfiguredModelAlgorithmAssociationResponse
      ->PrivacyConfiguration;
    my $UpdateTime =
      $GetCollaborationConfiguredModelAlgorithmAssociationResponse->UpdateTime;

# Returns a L<Paws::CleanRoomsML::GetCollaborationConfiguredModelAlgorithmAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/GetCollaborationConfiguredModelAlgorithmAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationIdentifier => Str

The collaboration ID for the collaboration that contains the configured
model algorithm association that you want to return information about.



=head2 B<REQUIRED> ConfiguredModelAlgorithmAssociationArn => Str

The Amazon Resource Name (ARN) of the configured model algorithm
association that you want to return information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCollaborationConfiguredModelAlgorithmAssociation in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

