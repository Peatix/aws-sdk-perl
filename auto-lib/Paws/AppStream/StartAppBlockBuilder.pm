
package Paws::AppStream::StartAppBlockBuilder;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartAppBlockBuilder');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::StartAppBlockBuilderResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::StartAppBlockBuilder - Arguments for method StartAppBlockBuilder on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartAppBlockBuilder on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method StartAppBlockBuilder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartAppBlockBuilder.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $StartAppBlockBuilderResult = $appstream2->StartAppBlockBuilder(
      Name => 'MyName',

    );

    # Results:
    my $AppBlockBuilder = $StartAppBlockBuilderResult->AppBlockBuilder;

    # Returns a L<Paws::AppStream::StartAppBlockBuilderResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/StartAppBlockBuilder>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the app block builder.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartAppBlockBuilder in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

