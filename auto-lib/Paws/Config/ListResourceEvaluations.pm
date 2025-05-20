
package Paws::Config::ListResourceEvaluations;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::Config::ResourceEvaluationFilters');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceEvaluations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::ListResourceEvaluationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ListResourceEvaluations - Arguments for method ListResourceEvaluations on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceEvaluations on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method ListResourceEvaluations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceEvaluations.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $ListResourceEvaluationsResponse = $config->ListResourceEvaluations(
      Filters => {
        EvaluationContextIdentifier =>
          'MyEvaluationContextIdentifier',    # min: 1, max: 128; OPTIONAL
        EvaluationMode => 'DETECTIVE',  # values: DETECTIVE, PROACTIVE; OPTIONAL
        TimeWindow     => {
          EndTime   => '1970-01-01T01:00:00',    # OPTIONAL
          StartTime => '1970-01-01T01:00:00',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Limit     => 1,             # OPTIONAL
      NextToken => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListResourceEvaluationsResponse->NextToken;
    my $ResourceEvaluations =
      $ListResourceEvaluationsResponse->ResourceEvaluations;

    # Returns a L<Paws::Config::ListResourceEvaluationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/ListResourceEvaluations>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::Config::ResourceEvaluationFilters>

Returns a C<ResourceEvaluationFilters> object.



=head2 Limit => Int

The maximum number of evaluations returned on each page. The default is
10. You cannot specify a number greater than 100. If you specify 0,
Config uses the default.



=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceEvaluations in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

