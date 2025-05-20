
package Paws::M2::ListDataSetImportHistory;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataSetImportHistory');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/dataset-import-tasks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::M2::ListDataSetImportHistoryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::ListDataSetImportHistory - Arguments for method ListDataSetImportHistory on L<Paws::M2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataSetImportHistory on the
L<AWSMainframeModernization|Paws::M2> service. Use the attributes of this class
as arguments to method ListDataSetImportHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataSetImportHistory.

=head1 SYNOPSIS

    my $m2 = Paws->service('M2');
    my $ListDataSetImportHistoryResponse = $m2->ListDataSetImportHistory(
      ApplicationId => 'MyIdentifier',
      MaxResults    => 1,                # OPTIONAL
      NextToken     => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $DataSetImportTasks =
      $ListDataSetImportHistoryResponse->DataSetImportTasks;
    my $NextToken = $ListDataSetImportHistoryResponse->NextToken;

    # Returns a L<Paws::M2::ListDataSetImportHistoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2/ListDataSetImportHistory>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier of the application.



=head2 MaxResults => Int

The maximum number of objects to return.



=head2 NextToken => Str

A pagination token returned from a previous call to this operation.
This specifies the next item to return. To return to the beginning of
the list, exclude this parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataSetImportHistory in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

