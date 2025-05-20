
package Paws::DataZone::ListProjects;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has GroupIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'groupIdentifier');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'name');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has UserIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'userIdentifier');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProjects');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/projects');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListProjectsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListProjects - Arguments for method ListProjects on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProjects on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListProjects.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProjects.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListProjectsOutput = $datazone->ListProjects(
      DomainIdentifier => 'MyDomainId',
      GroupIdentifier  => 'MyString',             # OPTIONAL
      MaxResults       => 1,                      # OPTIONAL
      Name             => 'MyProjectName',        # OPTIONAL
      NextToken        => 'MyPaginationToken',    # OPTIONAL
      UserIdentifier   => 'MyString',             # OPTIONAL
    );

    # Results:
    my $Items     = $ListProjectsOutput->Items;
    my $NextToken = $ListProjectsOutput->NextToken;

    # Returns a L<Paws::DataZone::ListProjectsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListProjects>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain.



=head2 GroupIdentifier => Str

The identifier of a group.



=head2 MaxResults => Int

The maximum number of projects to return in a single call to
C<ListProjects>. When the number of projects to be listed is greater
than the value of C<MaxResults>, the response contains a C<NextToken>
value that you can use in a subsequent call to C<ListProjects> to list
the next set of projects.



=head2 Name => Str

The name of the project.



=head2 NextToken => Str

When the number of projects is greater than the default value for the
C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of projects, the response
includes a pagination token named C<NextToken>. You can specify this
C<NextToken> value in a subsequent call to C<ListProjects> to list the
next set of projects.



=head2 UserIdentifier => Str

The identifier of the Amazon DataZone user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProjects in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

