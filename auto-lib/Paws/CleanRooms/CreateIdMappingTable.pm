
package Paws::CleanRooms::CreateIdMappingTable;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has InputReferenceConfig => (is => 'ro', isa => 'Paws::CleanRooms::IdMappingTableInputReferenceConfig', traits => ['NameInRequest'], request_name => 'inputReferenceConfig', required => 1);
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn');
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CleanRooms::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIdMappingTable');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/idmappingtables');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::CreateIdMappingTableOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::CreateIdMappingTable - Arguments for method CreateIdMappingTable on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIdMappingTable on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method CreateIdMappingTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIdMappingTable.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $CreateIdMappingTableOutput = $cleanrooms->CreateIdMappingTable(
      InputReferenceConfig => {
        InputReferenceArn =>
          'MyIdMappingTableInputReferenceArn',    # min: 20, max: 2048
        ManageResourcePolicies => 1,

      },
      MembershipIdentifier => 'MyMembershipIdentifier',
      Name                 => 'MyResourceAlias',
      Description          => 'MyResourceDescription',    # OPTIONAL
      KmsKeyArn            => 'MyKMSKeyArn',              # OPTIONAL
      Tags                 => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $IdMappingTable = $CreateIdMappingTableOutput->IdMappingTable;

    # Returns a L<Paws::CleanRooms::CreateIdMappingTableOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/CreateIdMappingTable>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the ID mapping table.



=head2 B<REQUIRED> InputReferenceConfig => L<Paws::CleanRooms::IdMappingTableInputReferenceConfig>

The input reference configuration needed to create the ID mapping
table.



=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) of the Amazon Web Services KMS key. This
value is used to encrypt the mapping table data that is stored by Clean
Rooms.



=head2 B<REQUIRED> MembershipIdentifier => Str

The unique identifier of the membership that contains the ID mapping
table.



=head2 B<REQUIRED> Name => Str

A name for the ID mapping table.



=head2 Tags => L<Paws::CleanRooms::TagMap>

An optional label that you can assign to a resource when you create it.
Each tag consists of a key and an optional value, both of which you
define. When you use tagging, you can also use tag-based access control
in IAM policies to control access to this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIdMappingTable in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

