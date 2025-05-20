
package Paws::ConnectCases::DeleteField;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainId', required => 1);
  has FieldId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'fieldId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteField');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{domainId}/fields/{fieldId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCases::DeleteFieldResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::DeleteField - Arguments for method DeleteField on L<Paws::ConnectCases>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteField on the
L<Amazon Connect Cases|Paws::ConnectCases> service. Use the attributes of this class
as arguments to method DeleteField.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteField.

=head1 SYNOPSIS

    my $cases = Paws->service('ConnectCases');
    my $DeleteFieldResponse = $cases->DeleteField(
      DomainId => 'MyDomainId',
      FieldId  => 'MyFieldId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cases/DeleteField>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The unique identifier of the Cases domain.



=head2 B<REQUIRED> FieldId => Str

Unique identifier of the field.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteField in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

