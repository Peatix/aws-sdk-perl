
package Paws::CodeBuild::ListSandboxes;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortOrder' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSandboxes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::ListSandboxesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ListSandboxes - Arguments for method ListSandboxes on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSandboxes on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method ListSandboxes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSandboxes.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $ListSandboxesOutput = $codebuild->ListSandboxes(
      MaxResults => 1,              # OPTIONAL
      NextToken  => 'MyString',     # OPTIONAL
      SortOrder  => 'ASCENDING',    # OPTIONAL
    );

    # Results:
    my $Ids       = $ListSandboxesOutput->Ids;
    my $NextToken = $ListSandboxesOutput->NextToken;

    # Returns a L<Paws::CodeBuild::ListSandboxesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/ListSandboxes>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of sandbox records to be retrieved.



=head2 NextToken => Str

The next token, if any, to get paginated results. You will get this
value from previous execution of list sandboxes.



=head2 SortOrder => Str

The order in which sandbox records should be retrieved.

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSandboxes in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

