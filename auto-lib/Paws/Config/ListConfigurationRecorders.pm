
package Paws::Config::ListConfigurationRecorders;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConfigurationRecorderFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConfigurationRecorders');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::ListConfigurationRecordersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ListConfigurationRecorders - Arguments for method ListConfigurationRecorders on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConfigurationRecorders on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method ListConfigurationRecorders.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConfigurationRecorders.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $ListConfigurationRecordersResponse =
      $config->ListConfigurationRecorders(
      Filters => [
        {
          FilterName  => 'recordingScope',    # values: recordingScope; OPTIONAL
          FilterValue => [ 'MyConfigurationRecorderFilterValue', ... ]
          ,                                   # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $ConfigurationRecorderSummaries =
      $ListConfigurationRecordersResponse->ConfigurationRecorderSummaries;
    my $NextToken = $ListConfigurationRecordersResponse->NextToken;

    # Returns a L<Paws::Config::ListConfigurationRecordersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/ListConfigurationRecorders>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::Config::ConfigurationRecorderFilter>]

Filters the results based on a list of C<ConfigurationRecorderFilter>
objects that you specify.



=head2 MaxResults => Int

The maximum number of results to include in the response.



=head2 NextToken => Str

The C<NextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConfigurationRecorders in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

