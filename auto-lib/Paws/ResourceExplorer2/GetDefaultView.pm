
package Paws::ResourceExplorer2::GetDefaultView;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDefaultView');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetDefaultView');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceExplorer2::GetDefaultViewOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::GetDefaultView - Arguments for method GetDefaultView on L<Paws::ResourceExplorer2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDefaultView on the
L<AWS Resource Explorer|Paws::ResourceExplorer2> service. Use the attributes of this class
as arguments to method GetDefaultView.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDefaultView.

=head1 SYNOPSIS

    my $resource-explorer-2 = Paws->service('ResourceExplorer2');
    my $GetDefaultViewOutput = $resource -explorer- 2->GetDefaultView();

    # Results:
    my $ViewArn = $GetDefaultViewOutput->ViewArn;

    # Returns a L<Paws::ResourceExplorer2::GetDefaultViewOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2/GetDefaultView>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDefaultView in L<Paws::ResourceExplorer2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

