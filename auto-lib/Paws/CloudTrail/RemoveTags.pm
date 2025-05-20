
package Paws::CloudTrail::RemoveTags;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has TagsList => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::RemoveTagsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::RemoveTags - Arguments for method RemoveTags on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveTags on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method RemoveTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveTags.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $RemoveTagsResponse = $cloudtrail->RemoveTags(
      ResourceId => 'MyString',
      TagsList   => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/RemoveTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

Specifies the ARN of the trail, event data store, dashboard, or channel
from which tags should be removed.

Example trail ARN format:
C<arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail>

Example event data store ARN format:
C<arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE>

Example dashboard ARN format:
C<arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash>

Example channel ARN format:
C<arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890>



=head2 B<REQUIRED> TagsList => ArrayRef[L<Paws::CloudTrail::Tag>]

Specifies a list of tags to be removed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveTags in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

