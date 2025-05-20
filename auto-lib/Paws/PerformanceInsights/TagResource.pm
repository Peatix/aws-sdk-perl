
package Paws::PerformanceInsights::TagResource;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);
  has ServiceType => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PerformanceInsights::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PerformanceInsights::TagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::TagResource - Arguments for method TagResource on L<Paws::PerformanceInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Performance Insights|Paws::PerformanceInsights> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $pi = Paws->service('PerformanceInsights');
    my $TagResourceResponse = $pi->TagResource(
      ResourceARN => 'MyAmazonResourceName',
      ServiceType => 'RDS',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pi/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str

The Amazon RDS Performance Insights resource that the tags are added
to. This value is an Amazon Resource Name (ARN). For information about
creating an ARN, see Constructing an RDS Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing).



=head2 B<REQUIRED> ServiceType => Str

The Amazon Web Services service for which Performance Insights returns
metrics. Valid value is C<RDS>.

Valid values are: C<"RDS">, C<"DOCDB">

=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::PerformanceInsights::Tag>]

The metadata assigned to an Amazon RDS resource consisting of a
key-value pair.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::PerformanceInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

