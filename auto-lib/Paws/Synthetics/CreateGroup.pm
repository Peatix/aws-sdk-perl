
package Paws::Synthetics::CreateGroup;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Synthetics::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/group');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Synthetics::CreateGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::CreateGroup - Arguments for method CreateGroup on L<Paws::Synthetics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGroup on the
L<Synthetics|Paws::Synthetics> service. Use the attributes of this class
as arguments to method CreateGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGroup.

=head1 SYNOPSIS

    my $synthetics = Paws->service('Synthetics');
    my $CreateGroupResponse = $synthetics->CreateGroup(
      Name => 'MyGroupName',
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Group = $CreateGroupResponse->Group;

    # Returns a L<Paws::Synthetics::CreateGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/synthetics/CreateGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name for the group. It can include any Unicode characters.

The names for all groups in your account, across all Regions, must be
unique.



=head2 Tags => L<Paws::Synthetics::TagMap>

A list of key-value pairs to associate with the group. You can
associate as many as 50 tags with a group.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions, by granting a user permission to
access or change only the resources that have certain tag values.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGroup in L<Paws::Synthetics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

