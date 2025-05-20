
package Paws::ConnectCases::UpdateCase;
  use Moose;
  has CaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'caseId', required => 1);
  has DomainId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainId', required => 1);
  has Fields => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::FieldValue]', traits => ['NameInRequest'], request_name => 'fields', required => 1);
  has PerformedBy => (is => 'ro', isa => 'Paws::ConnectCases::UserUnion', traits => ['NameInRequest'], request_name => 'performedBy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCase');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{domainId}/cases/{caseId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCases::UpdateCaseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::UpdateCase - Arguments for method UpdateCase on L<Paws::ConnectCases>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCase on the
L<Amazon Connect Cases|Paws::ConnectCases> service. Use the attributes of this class
as arguments to method UpdateCase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCase.

=head1 SYNOPSIS

    my $cases = Paws->service('ConnectCases');
    my $UpdateCaseResponse = $cases->UpdateCase(
      CaseId   => 'MyCaseId',
      DomainId => 'MyDomainId',
      Fields   => [
        {
          Id    => 'MyFieldId',    # min: 1, max: 500
          Value => {
            BooleanValue => 1,     # OPTIONAL
            DoubleValue  => 1,     # OPTIONAL
            EmptyValue   => {

            },                     # OPTIONAL
            StringValue =>
              'MyFieldValueUnionStringValueString',    # max: 3000; OPTIONAL
            UserArnValue => 'MyString',                # OPTIONAL
          },

        },
        ...
      ],
      PerformedBy => {
        CustomEntity => 'MyCustomEntity',    # min: 1, max: 500; OPTIONAL
        UserArn      => 'MyUserArn',         # min: 1, max: 500; OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cases/UpdateCase>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaseId => Str

A unique identifier of the case.



=head2 B<REQUIRED> DomainId => Str

The unique identifier of the Cases domain.



=head2 B<REQUIRED> Fields => ArrayRef[L<Paws::ConnectCases::FieldValue>]

An array of objects with C<fieldId> (matching ListFields/DescribeField)
and value union data, structured identical to C<CreateCase>.



=head2 PerformedBy => L<Paws::ConnectCases::UserUnion>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCase in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

