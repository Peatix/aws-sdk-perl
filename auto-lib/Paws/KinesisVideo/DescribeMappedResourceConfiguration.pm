
package Paws::KinesisVideo::DescribeMappedResourceConfiguration;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMappedResourceConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describeMappedResourceConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::DescribeMappedResourceConfigurationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::DescribeMappedResourceConfiguration - Arguments for method DescribeMappedResourceConfiguration on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMappedResourceConfiguration on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method DescribeMappedResourceConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMappedResourceConfiguration.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $DescribeMappedResourceConfigurationOutput =
      $kinesisvideo->DescribeMappedResourceConfiguration(
      MaxResults => 1,                  # OPTIONAL
      NextToken  => 'MyNextToken',      # OPTIONAL
      StreamARN  => 'MyResourceARN',    # OPTIONAL
      StreamName => 'MyStreamName',     # OPTIONAL
      );

    # Results:
    my $MappedResourceConfigurationList =
      $DescribeMappedResourceConfigurationOutput
      ->MappedResourceConfigurationList;
    my $NextToken = $DescribeMappedResourceConfigurationOutput->NextToken;

# Returns a L<Paws::KinesisVideo::DescribeMappedResourceConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/DescribeMappedResourceConfiguration>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NextToken => Str

The token to provide in your next request, to get another batch of
results.



=head2 StreamARN => Str

The Amazon Resource Name (ARN) of the stream.



=head2 StreamName => Str

The name of the stream.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMappedResourceConfiguration in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

