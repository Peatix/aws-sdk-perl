
package Paws::ResourceExplorer2::AssociateDefaultView;
  use Moose;
  has ViewArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateDefaultView');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/AssociateDefaultView');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceExplorer2::AssociateDefaultViewOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::AssociateDefaultView - Arguments for method AssociateDefaultView on L<Paws::ResourceExplorer2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateDefaultView on the
L<AWS Resource Explorer|Paws::ResourceExplorer2> service. Use the attributes of this class
as arguments to method AssociateDefaultView.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateDefaultView.

=head1 SYNOPSIS

    my $resource-explorer-2 = Paws->service('ResourceExplorer2');
    my $AssociateDefaultViewOutput =
      $resource -explorer- 2->AssociateDefaultView(
      ViewArn => 'MyAssociateDefaultViewInputViewArnString',

      );

    # Results:
    my $ViewArn = $AssociateDefaultViewOutput->ViewArn;

    # Returns a L<Paws::ResourceExplorer2::AssociateDefaultViewOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2/AssociateDefaultView>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ViewArn => Str

The Amazon resource name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the view to set as the default for the Amazon Web Services Region
and Amazon Web Services account in which you call this operation. The
specified view must already exist in the called Region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateDefaultView in L<Paws::ResourceExplorer2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

