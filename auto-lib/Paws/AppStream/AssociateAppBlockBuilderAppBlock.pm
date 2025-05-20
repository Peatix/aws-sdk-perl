
package Paws::AppStream::AssociateAppBlockBuilderAppBlock;
  use Moose;
  has AppBlockArn => (is => 'ro', isa => 'Str', required => 1);
  has AppBlockBuilderName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateAppBlockBuilderAppBlock');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::AssociateAppBlockBuilderAppBlockResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::AssociateAppBlockBuilderAppBlock - Arguments for method AssociateAppBlockBuilderAppBlock on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateAppBlockBuilderAppBlock on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method AssociateAppBlockBuilderAppBlock.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateAppBlockBuilderAppBlock.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $AssociateAppBlockBuilderAppBlockResult =
      $appstream2->AssociateAppBlockBuilderAppBlock(
      AppBlockArn         => 'MyArn',
      AppBlockBuilderName => 'MyName',

      );

    # Results:
    my $AppBlockBuilderAppBlockAssociation =
      $AssociateAppBlockBuilderAppBlockResult
      ->AppBlockBuilderAppBlockAssociation;

  # Returns a L<Paws::AppStream::AssociateAppBlockBuilderAppBlockResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/AssociateAppBlockBuilderAppBlock>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppBlockArn => Str

The ARN of the app block.



=head2 B<REQUIRED> AppBlockBuilderName => Str

The name of the app block builder.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateAppBlockBuilderAppBlock in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

