
package Paws::Repostspace::GetSpace;
  use Moose;
  has SpaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'spaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSpace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/spaces/{spaceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Repostspace::GetSpaceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Repostspace::GetSpace - Arguments for method GetSpace on L<Paws::Repostspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSpace on the
L<AWS re:Post Private|Paws::Repostspace> service. Use the attributes of this class
as arguments to method GetSpace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSpace.

=head1 SYNOPSIS

    my $repostspace = Paws->service('Repostspace');
    my $GetSpaceOutput = $repostspace->GetSpace(
      SpaceId => 'MySpaceId',

    );

    # Results:
    my $Arn                 = $GetSpaceOutput->Arn;
    my $ClientId            = $GetSpaceOutput->ClientId;
    my $ConfigurationStatus = $GetSpaceOutput->ConfigurationStatus;
    my $ContentSize         = $GetSpaceOutput->ContentSize;
    my $CreateDateTime      = $GetSpaceOutput->CreateDateTime;
    my $CustomerRoleArn     = $GetSpaceOutput->CustomerRoleArn;
    my $DeleteDateTime      = $GetSpaceOutput->DeleteDateTime;
    my $Description         = $GetSpaceOutput->Description;
    my $GroupAdmins         = $GetSpaceOutput->GroupAdmins;
    my $Name                = $GetSpaceOutput->Name;
    my $RandomDomain        = $GetSpaceOutput->RandomDomain;
    my $Roles               = $GetSpaceOutput->Roles;
    my $SpaceId             = $GetSpaceOutput->SpaceId;
    my $Status              = $GetSpaceOutput->Status;
    my $StorageLimit        = $GetSpaceOutput->StorageLimit;
    my $Tier                = $GetSpaceOutput->Tier;
    my $UserAdmins          = $GetSpaceOutput->UserAdmins;
    my $UserCount           = $GetSpaceOutput->UserCount;
    my $UserKMSKey          = $GetSpaceOutput->UserKMSKey;
    my $VanityDomain        = $GetSpaceOutput->VanityDomain;
    my $VanityDomainStatus  = $GetSpaceOutput->VanityDomainStatus;

    # Returns a L<Paws::Repostspace::GetSpaceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/repostspace/GetSpace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SpaceId => Str

The ID of the private re:Post.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSpace in L<Paws::Repostspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

