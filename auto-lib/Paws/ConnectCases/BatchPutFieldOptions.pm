
package Paws::ConnectCases::BatchPutFieldOptions;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainId', required => 1);
  has FieldId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'fieldId', required => 1);
  has Options => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::FieldOption]', traits => ['NameInRequest'], request_name => 'options', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchPutFieldOptions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{domainId}/fields/{fieldId}/options');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCases::BatchPutFieldOptionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::BatchPutFieldOptions - Arguments for method BatchPutFieldOptions on L<Paws::ConnectCases>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchPutFieldOptions on the
L<Amazon Connect Cases|Paws::ConnectCases> service. Use the attributes of this class
as arguments to method BatchPutFieldOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchPutFieldOptions.

=head1 SYNOPSIS

    my $cases = Paws->service('ConnectCases');
    my $BatchPutFieldOptionsResponse = $cases->BatchPutFieldOptions(
      DomainId => 'MyDomainId',
      FieldId  => 'MyFieldId',
      Options  => [
        {
          Active => 1,
          Name   => 'MyFieldOptionName',     # min: 1, max: 100
          Value  => 'MyFieldOptionValue',    # min: 1, max: 100

        },
        ...
      ],

    );

    # Results:
    my $Errors = $BatchPutFieldOptionsResponse->Errors;

    # Returns a L<Paws::ConnectCases::BatchPutFieldOptionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cases/BatchPutFieldOptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The unique identifier of the Cases domain.



=head2 B<REQUIRED> FieldId => Str

The unique identifier of a field.



=head2 B<REQUIRED> Options => ArrayRef[L<Paws::ConnectCases::FieldOption>]

A list of C<FieldOption> objects.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchPutFieldOptions in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

