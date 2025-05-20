
package Paws::BCMDataExports::ListTables;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTables');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMDataExports::ListTablesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMDataExports::ListTables - Arguments for method ListTables on L<Paws::BCMDataExports>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTables on the
L<AWS Billing and Cost Management Data Exports|Paws::BCMDataExports> service. Use the attributes of this class
as arguments to method ListTables.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTables.

=head1 SYNOPSIS

    my $bcm-data-exports = Paws->service('BCMDataExports');
    my $ListTablesResponse = $bcm -data-exports->ListTables(
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyNextPageToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTablesResponse->NextToken;
    my $Tables    = $ListTablesResponse->Tables;

    # Returns a L<Paws::BCMDataExports::ListTablesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports/ListTables>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of objects that are returned for the request.



=head2 NextToken => Str

The token to retrieve the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTables in L<Paws::BCMDataExports>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

