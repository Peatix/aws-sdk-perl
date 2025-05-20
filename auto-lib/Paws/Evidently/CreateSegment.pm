
package Paws::Evidently::CreateSegment;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Pattern => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pattern', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Evidently::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSegment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/segments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::CreateSegmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::CreateSegment - Arguments for method CreateSegment on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSegment on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method CreateSegment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSegment.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $CreateSegmentResponse = $evidently->CreateSegment(
      Name        => 'MySegmentName',
      Pattern     => 'MySegmentPattern',
      Description => 'MyDescription',      # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Segment = $CreateSegmentResponse->Segment;

    # Returns a L<Paws::Evidently::CreateSegmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/CreateSegment>

=head1 ATTRIBUTES


=head2 Description => Str

An optional description for this segment.



=head2 B<REQUIRED> Name => Str

A name for the segment.



=head2 B<REQUIRED> Pattern => Str

The pattern to use for the segment. For more information about pattern
syntax, see Segment rule pattern syntax
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html#CloudWatch-Evidently-segments-syntax.html).



=head2 Tags => L<Paws::Evidently::TagMap>

Assigns one or more tags (key-value pairs) to the segment.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.

Tags don't have any semantic meaning to Amazon Web Services and are
interpreted strictly as strings of characters.

You can associate as many as 50 tags with a segment.

For more information, see Tagging Amazon Web Services resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSegment in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

