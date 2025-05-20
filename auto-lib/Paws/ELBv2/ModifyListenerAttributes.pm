
package Paws::ELBv2::ModifyListenerAttributes;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::ListenerAttribute]', required => 1);
  has ListenerArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyListenerAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::ModifyListenerAttributesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyListenerAttributesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::ModifyListenerAttributes - Arguments for method ModifyListenerAttributes on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyListenerAttributes on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method ModifyListenerAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyListenerAttributes.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    my $ModifyListenerAttributesOutput =
      $elasticloadbalancing->ModifyListenerAttributes(
      Attributes => [
        {
          Key   => 'MyListenerAttributeKey',      # max: 256; OPTIONAL
          Value => 'MyListenerAttributeValue',    # OPTIONAL
        },
        ...
      ],
      ListenerArn => 'MyListenerArn',

      );

    # Results:
    my $Attributes = $ModifyListenerAttributesOutput->Attributes;

    # Returns a L<Paws::ELBv2::ModifyListenerAttributesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/ModifyListenerAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => ArrayRef[L<Paws::ELBv2::ListenerAttribute>]

The listener attributes.



=head2 B<REQUIRED> ListenerArn => Str

The Amazon Resource Name (ARN) of the listener.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyListenerAttributes in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

