
package Paws::Evidently::DeleteSegment;
  use Moose;
  has Segment => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'segment', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSegment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/segments/{segment}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::DeleteSegmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::DeleteSegment - Arguments for method DeleteSegment on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSegment on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method DeleteSegment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSegment.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $DeleteSegmentResponse = $evidently->DeleteSegment(
      Segment => 'MySegmentRef',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/DeleteSegment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Segment => Str

Specifies the segment to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSegment in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

