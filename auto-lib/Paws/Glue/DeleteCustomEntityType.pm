
package Paws::Glue::DeleteCustomEntityType;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCustomEntityType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::DeleteCustomEntityTypeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DeleteCustomEntityType - Arguments for method DeleteCustomEntityType on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCustomEntityType on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method DeleteCustomEntityType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCustomEntityType.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $DeleteCustomEntityTypeResponse = $glue->DeleteCustomEntityType(
      Name => 'MyNameString',

    );

    # Results:
    my $Name = $DeleteCustomEntityTypeResponse->Name;

    # Returns a L<Paws::Glue::DeleteCustomEntityTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/DeleteCustomEntityType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the custom pattern that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCustomEntityType in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

