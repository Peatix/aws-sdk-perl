
package Paws::Proton::ListRepositories;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRepositories');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::ListRepositoriesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListRepositories - Arguments for method ListRepositories on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRepositories on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method ListRepositories.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRepositories.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $ListRepositoriesOutput = $proton->ListRepositories(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListRepositoriesOutput->NextToken;
    my $Repositories = $ListRepositoriesOutput->Repositories;

    # Returns a L<Paws::Proton::ListRepositoriesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/ListRepositories>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of repositories to list.



=head2 NextToken => Str

A token that indicates the location of the next repository in the array
of repositories, after the list of repositories previously requested.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRepositories in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

