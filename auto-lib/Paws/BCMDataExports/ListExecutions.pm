
package Paws::BCMDataExports::ListExecutions;
  use Moose;
  has ExportArn => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMDataExports::ListExecutionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMDataExports::ListExecutions - Arguments for method ListExecutions on L<Paws::BCMDataExports>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListExecutions on the
L<AWS Billing and Cost Management Data Exports|Paws::BCMDataExports> service. Use the attributes of this class
as arguments to method ListExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListExecutions.

=head1 SYNOPSIS

    my $bcm-data-exports = Paws->service('BCMDataExports');
    my $ListExecutionsResponse = $bcm -data-exports->ListExecutions(
      ExportArn  => 'MyArn',
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyNextPageToken',    # OPTIONAL
    );

    # Results:
    my $Executions = $ListExecutionsResponse->Executions;
    my $NextToken  = $ListExecutionsResponse->NextToken;

    # Returns a L<Paws::BCMDataExports::ListExecutionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports/ListExecutions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportArn => Str

The Amazon Resource Name (ARN) for this export.



=head2 MaxResults => Int

The maximum number of objects that are returned for the request.



=head2 NextToken => Str

The token to retrieve the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListExecutions in L<Paws::BCMDataExports>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

