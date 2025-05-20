
package Paws::ResourceExplorer2::GetView;
  use Moose;
  has ViewArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetView');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetView');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceExplorer2::GetViewOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::GetView - Arguments for method GetView on L<Paws::ResourceExplorer2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetView on the
L<AWS Resource Explorer|Paws::ResourceExplorer2> service. Use the attributes of this class
as arguments to method GetView.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetView.

=head1 SYNOPSIS

    my $resource-explorer-2 = Paws->service('ResourceExplorer2');
    my $GetViewOutput = $resource -explorer- 2->GetView(
      ViewArn => 'MyGetViewInputViewArnString',

    );

    # Results:
    my $Tags = $GetViewOutput->Tags;
    my $View = $GetViewOutput->View;

    # Returns a L<Paws::ResourceExplorer2::GetViewOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2/GetView>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ViewArn => Str

The Amazon resource name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the view that you want information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetView in L<Paws::ResourceExplorer2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

