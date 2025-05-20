
package Paws::TimestreamQuery::PrepareQuery;
  use Moose;
  has QueryString => (is => 'ro', isa => 'Str', required => 1);
  has ValidateOnly => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PrepareQuery');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamQuery::PrepareQueryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::PrepareQuery - Arguments for method PrepareQuery on L<Paws::TimestreamQuery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PrepareQuery on the
L<Amazon Timestream Query|Paws::TimestreamQuery> service. Use the attributes of this class
as arguments to method PrepareQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PrepareQuery.

=head1 SYNOPSIS

    my $query.timestream = Paws->service('TimestreamQuery');
    my $PrepareQueryResponse = $query . timestream->PrepareQuery(
      QueryString  => 'MyQueryString',
      ValidateOnly => 1,                 # OPTIONAL
    );

    # Results:
    my $Columns     = $PrepareQueryResponse->Columns;
    my $Parameters  = $PrepareQueryResponse->Parameters;
    my $QueryString = $PrepareQueryResponse->QueryString;

    # Returns a L<Paws::TimestreamQuery::PrepareQueryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/query.timestream/PrepareQuery>

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueryString => Str

The Timestream query string that you want to use as a prepared
statement. Parameter names can be specified in the query string C<@>
character followed by an identifier.



=head2 ValidateOnly => Bool

By setting this value to C<true>, Timestream will only validate that
the query string is a valid Timestream query, and not store the
prepared query for later use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PrepareQuery in L<Paws::TimestreamQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

