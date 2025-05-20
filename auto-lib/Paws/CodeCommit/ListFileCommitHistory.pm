
package Paws::CodeCommit::ListFileCommitHistory;
  use Moose;
  has CommitSpecifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitSpecifier' );
  has FilePath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filePath' , required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFileCommitHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::ListFileCommitHistoryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ListFileCommitHistory - Arguments for method ListFileCommitHistory on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFileCommitHistory on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method ListFileCommitHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFileCommitHistory.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $ListFileCommitHistoryResponse = $codecommit->ListFileCommitHistory(
      FilePath        => 'MyPath',
      RepositoryName  => 'MyRepositoryName',
      CommitSpecifier => 'MyCommitName',       # OPTIONAL
      MaxResults      => 1,                    # OPTIONAL
      NextToken       => 'MyNextToken',        # OPTIONAL
    );

    # Results:
    my $NextToken   = $ListFileCommitHistoryResponse->NextToken;
    my $RevisionDag = $ListFileCommitHistoryResponse->RevisionDag;

    # Returns a L<Paws::CodeCommit::ListFileCommitHistoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/ListFileCommitHistory>

=head1 ATTRIBUTES


=head2 CommitSpecifier => Str

The fully quaified reference that identifies the commit that contains
the file. For example, you can specify a full commit ID, a tag, a
branch name, or a reference such as C<refs/heads/main>. If none is
provided, the head commit is used.



=head2 B<REQUIRED> FilePath => Str

The full path of the file whose history you want to retrieve, including
the name of the file.



=head2 MaxResults => Int

A non-zero, non-negative integer used to limit the number of returned
results.



=head2 NextToken => Str

An enumeration token that allows the operation to batch the results.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository that contains the file.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFileCommitHistory in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

