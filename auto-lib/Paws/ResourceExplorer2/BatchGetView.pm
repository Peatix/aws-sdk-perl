
package Paws::ResourceExplorer2::BatchGetView;
  use Moose;
  has ViewArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetView');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/BatchGetView');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceExplorer2::BatchGetViewOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::BatchGetView - Arguments for method BatchGetView on L<Paws::ResourceExplorer2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetView on the
L<AWS Resource Explorer|Paws::ResourceExplorer2> service. Use the attributes of this class
as arguments to method BatchGetView.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetView.

=head1 SYNOPSIS

    my $resource-explorer-2 = Paws->service('ResourceExplorer2');
    my $BatchGetViewOutput = $resource -explorer- 2->BatchGetView(
      ViewArns => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $Errors = $BatchGetViewOutput->Errors;
    my $Views  = $BatchGetViewOutput->Views;

    # Returns a L<Paws::ResourceExplorer2::BatchGetViewOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2/BatchGetView>

=head1 ATTRIBUTES


=head2 ViewArns => ArrayRef[Str|Undef]

A list of Amazon resource names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
that identify the views you want details for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetView in L<Paws::ResourceExplorer2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

