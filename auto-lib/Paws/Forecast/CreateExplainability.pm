
package Paws::Forecast::CreateExplainability;
  use Moose;
  has DataSource => (is => 'ro', isa => 'Paws::Forecast::DataSource');
  has EnableVisualization => (is => 'ro', isa => 'Bool');
  has EndDateTime => (is => 'ro', isa => 'Str');
  has ExplainabilityConfig => (is => 'ro', isa => 'Paws::Forecast::ExplainabilityConfig', required => 1);
  has ExplainabilityName => (is => 'ro', isa => 'Str', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has Schema => (is => 'ro', isa => 'Paws::Forecast::Schema');
  has StartDateTime => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateExplainability');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::CreateExplainabilityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateExplainability - Arguments for method CreateExplainability on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateExplainability on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method CreateExplainability.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateExplainability.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $CreateExplainabilityResponse = $forecast->CreateExplainability(
      ExplainabilityConfig => {
        TimePointGranularity  => 'ALL',    # values: ALL, SPECIFIC
        TimeSeriesGranularity => 'ALL',    # values: ALL, SPECIFIC

      },
      ExplainabilityName => 'MyName',
      ResourceArn        => 'MyArn',
      DataSource         => {
        S3Config => {
          Path      => 'MyS3Path',       # min: 7, max: 4096
          RoleArn   => 'MyArn',          # max: 256
          KMSKeyArn => 'MyKMSKeyArn',    # max: 256; OPTIONAL
        },

      },    # OPTIONAL
      EnableVisualization => 1,                    # OPTIONAL
      EndDateTime         => 'MyLocalDateTime',    # OPTIONAL
      Schema              => {
        Attributes => [
          {
            AttributeName => 'MyName',    # min: 1, max: 63
            AttributeType => 'string'
            , # values: string, integer, float, timestamp, geolocation; OPTIONAL
          },
          ...
        ],    # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      StartDateTime => 'MyLocalDateTime',    # OPTIONAL
      Tags          => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ExplainabilityArn = $CreateExplainabilityResponse->ExplainabilityArn;

    # Returns a L<Paws::Forecast::CreateExplainabilityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/CreateExplainability>

=head1 ATTRIBUTES


=head2 DataSource => L<Paws::Forecast::DataSource>





=head2 EnableVisualization => Bool

Create an Explainability visualization that is viewable within the
Amazon Web Services console.



=head2 EndDateTime => Str

If C<TimePointGranularity> is set to C<SPECIFIC>, define the last time
point for the Explainability.

Use the following timestamp format: yyyy-MM-ddTHH:mm:ss (example:
2015-01-01T20:00:00)



=head2 B<REQUIRED> ExplainabilityConfig => L<Paws::Forecast::ExplainabilityConfig>

The configuration settings that define the granularity of time series
and time points for the Explainability.



=head2 B<REQUIRED> ExplainabilityName => Str

A unique name for the Explainability.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the Predictor or Forecast used to
create the Explainability.



=head2 Schema => L<Paws::Forecast::Schema>





=head2 StartDateTime => Str

If C<TimePointGranularity> is set to C<SPECIFIC>, define the first
point for the Explainability.

Use the following timestamp format: yyyy-MM-ddTHH:mm:ss (example:
2015-01-01T20:00:00)



=head2 Tags => ArrayRef[L<Paws::Forecast::Tag>]

Optional metadata to help you categorize and organize your resources.
Each tag consists of a key and an optional value, both of which you
define. Tag keys and values are case sensitive.

The following restrictions apply to tags:

=over

=item *

For each resource, each tag key must be unique and each tag key must
have one value.

=item *

Maximum number of tags per resource: 50.

=item *

Maximum key length: 128 Unicode characters in UTF-8.

=item *

Maximum value length: 256 Unicode characters in UTF-8.

=item *

Accepted characters: all letters and numbers, spaces representable in
UTF-8, and + - = . _ : / @. If your tagging schema is used across other
services and resources, the character restrictions of those services
also apply.

=item *

Key prefixes cannot include any upper or lowercase combination of
C<aws:> or C<AWS:>. Values can have this prefix. If a tag value has
C<aws> as its prefix but the key does not, Forecast considers it to be
a user tag and will count against the limit of 50 tags. Tags with only
the key prefix of C<aws> do not count against your tags per resource
limit. You cannot edit or delete tag keys with this prefix.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateExplainability in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

