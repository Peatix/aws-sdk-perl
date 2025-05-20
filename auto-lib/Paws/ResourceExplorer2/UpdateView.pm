
package Paws::ResourceExplorer2::UpdateView;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::ResourceExplorer2::SearchFilter');
  has IncludedProperties => (is => 'ro', isa => 'ArrayRef[Paws::ResourceExplorer2::IncludedProperty]');
  has ViewArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateView');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateView');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceExplorer2::UpdateViewOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::UpdateView - Arguments for method UpdateView on L<Paws::ResourceExplorer2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateView on the
L<AWS Resource Explorer|Paws::ResourceExplorer2> service. Use the attributes of this class
as arguments to method UpdateView.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateView.

=head1 SYNOPSIS

    my $resource-explorer-2 = Paws->service('ResourceExplorer2');
    my $UpdateViewOutput = $resource -explorer- 2->UpdateView(
      ViewArn => 'MyUpdateViewInputViewArnString',
      Filters => {
        FilterString => 'MySearchFilterFilterStringString',    # max: 2048

      },    # OPTIONAL
      IncludedProperties => [
        {
          Name => 'MyIncludedPropertyNameString',    # min: 1, max: 1011

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $View = $UpdateViewOutput->View;

    # Returns a L<Paws::ResourceExplorer2::UpdateViewOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2/UpdateView>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::ResourceExplorer2::SearchFilter>

An array of strings that specify which resources are included in the
results of queries made using this view. When you use this view in a
Search operation, the filter string is combined with the search's
C<QueryString> parameter using a logical C<AND> operator.

For information about the supported syntax, see Search query reference
for Resource Explorer
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html)
in the I<Amazon Web Services Resource Explorer User Guide>.

This query string in the context of this operation supports only filter
prefixes
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-filters)
with optional operators
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-operators).
It doesn't support free-form text. For example, the string C<region:us*
service:ec2 -tag:stage=prod> includes all Amazon EC2 resources in any
Amazon Web Services Region that begins with the letters C<us> and is
I<not> tagged with a key C<Stage> that has the value C<prod>.



=head2 IncludedProperties => ArrayRef[L<Paws::ResourceExplorer2::IncludedProperty>]

Specifies optional fields that you want included in search results from
this view. It is a list of objects that each describe a field to
include.

The default is an empty list, with no optional fields included in the
results.



=head2 B<REQUIRED> ViewArn => Str

The Amazon resource name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the view that you want to modify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateView in L<Paws::ResourceExplorer2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

