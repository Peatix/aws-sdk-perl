
package Paws::RedshiftServerless::ListSnapshots;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NamespaceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceArn' );
  has NamespaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceName' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerAccount' );
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::ListSnapshotsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ListSnapshots - Arguments for method ListSnapshots on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSnapshots on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method ListSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSnapshots.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $ListSnapshotsResponse = $redshift -serverless->ListSnapshots(
      EndTime       => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults    => 1,                        # OPTIONAL
      NamespaceArn  => 'MyString',               # OPTIONAL
      NamespaceName => 'MyString',               # OPTIONAL
      NextToken     => 'MyString',               # OPTIONAL
      OwnerAccount  => 'MyString',               # OPTIONAL
      StartTime     => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSnapshotsResponse->NextToken;
    my $Snapshots = $ListSnapshotsResponse->Snapshots;

    # Returns a L<Paws::RedshiftServerless::ListSnapshotsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/ListSnapshots>

=head1 ATTRIBUTES


=head2 EndTime => Str

The timestamp showing when the snapshot creation finished.



=head2 MaxResults => Int

An optional parameter that specifies the maximum number of results to
return. You can use C<nextToken> to display the next page of results.



=head2 NamespaceArn => Str

The Amazon Resource Name (ARN) of the namespace from which to list all
snapshots.



=head2 NamespaceName => Str

The namespace from which to list all snapshots.



=head2 NextToken => Str

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page.



=head2 OwnerAccount => Str

The owner Amazon Web Services account of the snapshot.



=head2 StartTime => Str

The time when the creation of the snapshot was initiated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSnapshots in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

