
package Paws::EntityResolution::ListIdNamespaces;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIdNamespaces');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/idnamespaces');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EntityResolution::ListIdNamespacesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::ListIdNamespaces - Arguments for method ListIdNamespaces on L<Paws::EntityResolution>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIdNamespaces on the
L<AWS EntityResolution|Paws::EntityResolution> service. Use the attributes of this class
as arguments to method ListIdNamespaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIdNamespaces.

=head1 SYNOPSIS

    my $entityresolution = Paws->service('EntityResolution');
    my $ListIdNamespacesOutput = $entityresolution->ListIdNamespaces(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $IdNamespaceSummaries = $ListIdNamespacesOutput->IdNamespaceSummaries;
    my $NextToken            = $ListIdNamespacesOutput->NextToken;

    # Returns a L<Paws::EntityResolution::ListIdNamespacesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution/ListIdNamespaces>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of C<IdNamespace> objects returned per page.



=head2 NextToken => Str

The pagination token from the previous API call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIdNamespaces in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

