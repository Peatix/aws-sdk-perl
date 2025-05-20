
package Paws::RedshiftServerless::ListTableRestoreStatus;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NamespaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceName' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has WorkgroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workgroupName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTableRestoreStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::ListTableRestoreStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ListTableRestoreStatus - Arguments for method ListTableRestoreStatus on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTableRestoreStatus on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method ListTableRestoreStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTableRestoreStatus.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $ListTableRestoreStatusResponse =
      $redshift -serverless->ListTableRestoreStatus(
      MaxResults    => 1,                      # OPTIONAL
      NamespaceName => 'MyString',             # OPTIONAL
      NextToken     => 'MyPaginationToken',    # OPTIONAL
      WorkgroupName => 'MyString',             # OPTIONAL
      );

    # Results:
    my $NextToken = $ListTableRestoreStatusResponse->NextToken;
    my $TableRestoreStatuses =
      $ListTableRestoreStatusResponse->TableRestoreStatuses;

 # Returns a L<Paws::RedshiftServerless::ListTableRestoreStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/ListTableRestoreStatus>

=head1 ATTRIBUTES


=head2 MaxResults => Int

An optional parameter that specifies the maximum number of results to
return. You can use nextToken to display the next page of results.



=head2 NamespaceName => Str

The namespace from which to list all of the statuses of
C<RestoreTableFromSnapshot> operations .



=head2 NextToken => Str

If your initial C<ListTableRestoreStatus> operation returns a
nextToken, you can include the returned C<nextToken> in following
C<ListTableRestoreStatus> operations. This will return results on the
next page.



=head2 WorkgroupName => Str

The workgroup from which to list all of the statuses of
C<RestoreTableFromSnapshot> operations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTableRestoreStatus in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

