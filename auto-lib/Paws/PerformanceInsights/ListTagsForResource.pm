
package Paws::PerformanceInsights::ListTagsForResource;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);
  has ServiceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PerformanceInsights::ListTagsForResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::PerformanceInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<AWS Performance Insights|Paws::PerformanceInsights> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $pi = Paws->service('PerformanceInsights');
    my $ListTagsForResourceResponse = $pi->ListTagsForResource(
      ResourceARN => 'MyAmazonResourceName',
      ServiceType => 'RDS',

    );

    # Results:
    my $Tags = $ListTagsForResourceResponse->Tags;

   # Returns a L<Paws::PerformanceInsights::ListTagsForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pi/ListTagsForResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str

Lists all the tags for the Amazon RDS Performance Insights resource.
This value is an Amazon Resource Name (ARN). For information about
creating an ARN, see Constructing an RDS Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing).



=head2 B<REQUIRED> ServiceType => Str

List the tags for the Amazon Web Services service for which Performance
Insights returns metrics. Valid value is C<RDS>.

Valid values are: C<"RDS">, C<"DOCDB">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::PerformanceInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

