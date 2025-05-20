
package Paws::Proton::GetComponent;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetComponent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::GetComponentOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetComponent - Arguments for method GetComponent on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetComponent on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method GetComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetComponent.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $GetComponentOutput = $proton->GetComponent(
      Name => 'MyResourceName',

    );

    # Results:
    my $Component = $GetComponentOutput->Component;

    # Returns a L<Paws::Proton::GetComponentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/GetComponent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the component that you want to get the detailed data for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetComponent in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

